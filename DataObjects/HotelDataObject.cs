using Models;
using System.Linq;
using System.Collections.Generic;

namespace DataObjects
{
    public class HotelDataObject
    {
        public List<Hotel> OrdenamientoDescending(List<Hotel> hoteles)
        {
            List<Hotel> listaOrdenada = new List<Hotel>();

            listaOrdenada = hoteles.OrderByDescending(p => p.Precio).ToList();

            return listaOrdenada;
        }

        public List<Hotel> OrdenamientoAscending(List<Hotel> hoteles)
        {
            List<Hotel> listaOrdenada = new List<Hotel>();

            listaOrdenada = hoteles.OrderBy(p => p.Precio).ToList();

            return listaOrdenada;
        }
    }
}
