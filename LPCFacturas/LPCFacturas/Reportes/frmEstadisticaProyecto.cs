﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LPCFacturas.BusinessLayer;
using Microsoft.Reporting.WinForms;

namespace LPCFacturas.Reportes
{
    public partial class frmEstadisticaProyecto : Form
    {
        ProyectoService oProyectoService = new ProyectoService();
        public frmEstadisticaProyecto()
        {
            InitializeComponent();
        }

        private void frmEstadisticaProyecto_Load(object sender, EventArgs e)
        {

            this.reportViewer1.RefreshReport();

        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {
            DataTable tabla = new DataTable();
            tabla = oProyectoService.recuperarProyectosFacturadosEstadistica();

            ReportDataSource ds = new ReportDataSource("ProyectosFacturados", tabla);

            DataTable tabla1 = new DataTable();
            tabla1 = oProyectoService.recuperarProyectosPorResponsables();

            ReportDataSource ds1 = new ReportDataSource("ResponsablesProyecto", tabla1);

            reportViewer1.LocalReport.DataSources.Clear();
            reportViewer1.LocalReport.DataSources.Add(ds);
            reportViewer1.LocalReport.DataSources.Add(ds1);
            reportViewer1.LocalReport.Refresh();
            reportViewer1.RefreshReport();

        }
    }
}
