using SQLite;
using SQLiteNetExtensions.Attributes;

namespace GymEquipmentsStore.Models
{
    public class Equipment
    {
        [PrimaryKey, AutoIncrement]
        public int EquipmentId { get; set; }

        public string Name { get; set; }
        public string Brand { get; set; }
        public decimal Price { get; set; }
        public int StockQuantity { get; set; }

       
    }
}
