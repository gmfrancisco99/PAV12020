﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;
using LPCFacturas.Entities;
using System.Data;
using System.Windows.Forms;

namespace LPCFacturas.DataAccessLayer
{
    class FacturaDao
    {
        ClienteDao oCliente = new ClienteDao();
        UsuarioDao oUsuario = new UsuarioDao();
        DetalleFacturaDao oDetalleFacturaDao = new DetalleFacturaDao();
        public IList<Factura> GetAll()
        {
            List<Factura> listadoFactura = new List<Factura>();

            var strSql = " SELECT id_factura, numero_factura, id_cliente, fecha, id_usuario_creador " +
                         " FROM Facturas WHERE p.borrado=0";

            var resultadoConsulta = DataManager.GetInstance().ConsultaSQL(strSql);

            foreach (DataRow row in resultadoConsulta.Rows)
            {
                listadoFactura.Add(MappingFactura(row));
            }

            return listadoFactura;
        }

        private Factura MappingFactura(DataRow row)
        {
            Factura oFactura = new Factura
            {
                Id_factura = Convert.ToInt32(row["id_factura"].ToString()),
                Detalles = oDetalleFacturaDao.GetAll(row["id_factura"].ToString()),
                Numero_factura = Convert.ToInt32(row["numero_factura"].ToString()),
                Cliente = oCliente.GetCliente(row["id_cliente"].ToString()),
                Fecha = Convert.ToDateTime(row["fecha"].ToString()),
                Usuario_creador = oUsuario.GetUserId(row["id_usuario_creador"].ToString()),
            };

            return oFactura;
        }

        public void InsertarFactura(Factura oFactura)
        {
            string SQLinsert = " INSERT INTO Facturas(numero_factura, id_cliente, fecha, id_usuario_creador, borrado) " +
                               "VALUES (" + oFactura.Numero_factura + ", " + oFactura.Cliente.Id_cliente + ", Convert(date,'"
                                            + oFactura.Fecha.ToShortDateString() + "',103) ," + oFactura.Usuario_creador.IdUsuario + ", 0) ";
            DataManager.GetInstance().EjecutarSQL(SQLinsert);
        }

        public void CrearFactura(Factura oFactura)
        {
            try
            {
                DataManager.GetInstance().Open();
                DataManager.GetInstance().BeginTransaction();
                InsertarFactura(oFactura);
                oDetalleFacturaDao.InsertarDetalles(oFactura.Detalles);
                DataManager.GetInstance().Commit();
                MessageBox.Show("Transaccion realizada con exito.");
                
            }
            catch(Exception ex)
            {
                DataManager.GetInstance().Rollback();
                MessageBox.Show("No se pudo realizar la transaccion.");
                throw ex;
                
            }
            finally
            {
                DataManager.GetInstance().Close();
            }
                
        }
    }
}
