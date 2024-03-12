using System;
using System.Collections.Generic;
using System.IO;
using SQLite;
using GymEquipmentsStore.Models;
using SQLiteNetExtensions.Extensions;

namespace GymEquipmentsStore.Services
{
    public class GymStoreLocalDatabase
    {
        private SQLiteConnection _dbConnection;

        public string GetDatabasePath()
        {
            string filename = "gymstoredata.db";
            string pathToDb = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
            return Path.Combine(pathToDb, filename);
        }

        public GymStoreLocalDatabase()
        {
            _dbConnection = new SQLiteConnection(GetDatabasePath());

            _dbConnection.CreateTable<Equipment>();
            //_dbConnection.CreateTable<Cart>();

            SeedDatabase();
        }

        public void SeedDatabase()
        {
            if (_dbConnection.Table<Equipment>().Count() == 0)
            {
                Equipment equipment = new Equipment()
                {
                    EquipmentId = 0,
                    Name = "Treadmill",
                    Brand = "BrandX",
                    Price = 999.99m,
                    StockQuantity = 10
                };
                _dbConnection.Insert(equipment);
            }

            if (_dbConnection.Table<Cart>().Count() == 0)
            {
                Cart cart = new Cart();
                _dbConnection.Insert(cart);
            }
        }

        /*public List<Equipment> GetAllEquipments()
        {
            return _dbConnection.Table<Equipment>().ToList();
        }*/

        public Equipment GetEquipmentById(int id)
        {
            return _dbConnection.Table<Equipment>().Where(x => x.EquipmentId == id).FirstOrDefault();
        }

        public void UpdateEquipment(Equipment equipment)
        {
            _dbConnection.Update(equipment);
        }

        /* public void AddToCart(Cart cart, Equipment equipment)
         {
             cart.SelectedEquipments.Add(equipment);
             _dbConnection.UpdateWithChildren(cart);
         }

         public List<Cart> GetAllCarts()
         {
             return _dbConnection.Table<Cart>().ToList();
         }*/
    }
}
