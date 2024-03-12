using System.Collections.Generic;
using SQLite;
using SQLiteNetExtensions.Attributes;

namespace GymEquipmentsStore.Models
{
    public class Cart
    {
        [PrimaryKey, AutoIncrement]
        public int CartId { get; set; }

        [OneToMany(CascadeOperations = CascadeOperation.All)]
        public List<Equipment> SelectedEquipments { get; set; }

        public Cart()
        {
            SelectedEquipments = new List<Equipment>();
        }
    }
}
