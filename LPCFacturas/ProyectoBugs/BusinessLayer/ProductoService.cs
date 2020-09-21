﻿using LPCFacturas.DataAccessLayer;
using LPCFacturas.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LPCFacturas.BusinessLayer
{
    class ProductoService
    {
        private ProductoDao oProductoDao = new ProductoDao();

        public IList<Producto> recuperarTodos()
        {
            return oProductoDao.GetAll();
        }

        public Producto recuperarProducto(string idProducto)
        {
            return oProductoDao.GetProducto(idProducto);
        }

        internal void crearProducto(Producto oProducto)
        {
            oProductoDao.crearProducto(oProducto);
        }

        internal void actualizarProducto(Producto oProducto)
        {
            oProductoDao.actualizarProducto(oProducto);
        }

        internal void eliminarProducto(Producto oProducto)
        {
            oProductoDao.eliminarProducto(oProducto);
        }
    }
}
