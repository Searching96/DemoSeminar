﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Demo_UI_VectorGraphic
{
    public partial class LoginApp : Window
    {
        public LoginApp()
        {
            InitializeComponent();
        }
        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            var username = UsernameTextBox.Text;
            var password = PasswordBox.Password;

            if (username != null && password !=null)
            {
                this.Hide();
                LoginApp_Advanced loginApp_Advanced = new LoginApp_Advanced();
                loginApp_Advanced.Show();
            }
            else
            {
                MessageBox.Show("Invalid username or password.");
            }
        }

        private void SignUpButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("SignUp.");
        }

        private void ForgotPasswordButton_Click(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            MessageBox.Show("ForgotPassword.");
        }
        private void UsernameTextBox_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {

        }
    }
}