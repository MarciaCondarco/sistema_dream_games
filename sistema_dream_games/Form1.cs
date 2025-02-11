using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace sistema_dream_games
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void buttonSalvar_Click(object sender, EventArgs e)
        {
            string conexaoString = "Server=localhost; Port=3306; Database=db_dream_game; Uid=root; Pwd=;";

            string query = "INSERT INTO tb_games (titulo, avaliacao, tamanho, descricao, valor, desenvolvedor, genero) VALUES " +
    "(@titulo, @avaliacao, @tamanho, @descricao, @valor, @desenvolvedor, @genero)";

            using (MySqlConnection conexao = new MySqlConnection(conexaoString))
            {
                try
                {
                    conexao.Open();

                    using (MySqlCommand comando = new MySqlCommand(query, conexao))
                    {
                        comando.Parameters.AddWithValue("@titulo", textBoxTitulo.Text);
                        comando.Parameters.AddWithValue("@avaliacao", comboBoxAvaliacao.Text);
                        comando.Parameters.AddWithValue("@tamanho", maskedTextBoxTamanho.Text);
                        comando.Parameters.AddWithValue("@valor", maskedTextBoxValor.Text);
                        comando.Parameters.AddWithValue("@desenvolvedor", textBoxDesenvolvedor.Text);
                        comando.Parameters.AddWithValue("@descricao", richTextBoxDescricao.Text);
                        comando.Parameters.AddWithValue("@genero", comboBoxGenero.Text);


                        comando.ExecuteNonQuery();
                        MessageBox.Show("Dados inseridos com sucesso!");

                        textBoxTitulo.Text = "";
                        comboBoxAvaliacao.Text = "";
                        maskedTextBoxTamanho.Text = "";
                        maskedTextBoxValor.Text = "";
                        textBoxDesenvolvedor.Text = "";
                        richTextBoxDescricao.Text = "";
                        comboBoxGenero.Text = "";
                        textBoxTitulo.Focus();


                    }
                }
                catch (Exception ex)
                {
                    //em caso de erro, exiba mensagem do erro 
                    MessageBox.Show("Erro: " + ex.Message);
                }
            }





        }
    }
}
