﻿using LPCFacturas.BusinessLayer;
using LPCFacturas.Entities;
using LPCFacturas.GUILayer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LPCFacturas.BusinessLayer;

namespace ProyectoBugs.GUILayer
{
    public partial class frmPrincipal : Form
    {
        string usuarioActual;
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {
            frmLogin fl = new frmLogin();
            fl.ShowDialog();
            usuarioActual = fl.UsuarioLogueado;
            this.Text = "Menu Principal " + usuarioActual;
            fl.Dispose();

        }
    }
}