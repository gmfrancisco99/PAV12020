﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiPrimerProyecto.Clases
{
    class Usuario
    {   //Declaración de los atributos que contiene la clase
        private int id_usuario;
        private string n_usuario;
        private string password;
        private string email;
        private int id_perfil;

        //Declaracion de propiedades para acceder a los getters y setters 
        public int Id_usuario { get => id_usuario; set => id_usuario = value; }
        public string N_usuario { get => n_usuario; set => n_usuario = value; }
        public string Password { get => password; set => password = value; }
        public string Email { get => email; set => email = value; }
        public int Id_perfil { get => id_perfil; set => id_perfil = value; }
    }
}