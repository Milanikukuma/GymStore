using System.Collections.Generic;
using Microsoft.Maui.Controls;
using GymEquipmentsStore.Models;
using GymEquipmentsStore.Services;

namespace GymEquipmentsStore
{
    public partial class MainPage : ContentPage
    {
        private GymStoreLocalDatabase _database;

        private Equipment equipment;
        
        public Equipment Equipment
        {
            get { return equipment
                    ; }
            set
            {
                equipment = value;

                OnPropertyChanged();
            }
        }
        //public IEnumerable<Equipment> Equipments { get; set; }

        public MainPage()
        {
            InitializeComponent();

            // Replace this with your actual data or data retrieval logic
         /*   Equipments = new List<Equipment>
            {
                new Equipment { Name = "Treadmill", Brand = "BrandX", Price = 999.99m, StockQuantity = 10 },
                new Equipment { Name = "Dumbbells Set", Brand = "BrandY", Price = 199.99m, StockQuantity = 50 }
                // Add more equipment items as needed
            };*/

            _database = new GymStoreLocalDatabase();

            BindingContext = this;
        }

        /*protected override ReloadButton_Clicked(object sender, EventArgs e)
        {

        }*/

    
        
        private void LoadData()
        {
            Equipment equipment = _database.GetEquipmentById(0);

        }

        private void OnSaveClicked(object sender, EventArgs e)
        {
            _database.UpdateEquipment(Equipment);

        }

    }
}
