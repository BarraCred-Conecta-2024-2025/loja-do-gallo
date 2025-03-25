using LojaDoGallo.Models;
using Microsoft.EntityFrameworkCore;

namespace LojaDoGallo.Data;

public class AppDbSeed
{
    public AppDbSeed(ModelBuilder builder)
    {
        List<Categoria> categorias = new() {
            new() { Id = 1, Nome = "Smartphones", Foto="/img/categoria/1.jpg" },
            new() { Id = 2, Nome = "Notebooks" },
        };
        builder.Entity<Categoria>().HasData(categorias);

        List<Produto> produtos = new() {
            new() {
                Id = 1,
                CategoriaId = 1,
                Nome = "iPhone 14 Pro",
                Descricao = "Apple A16 Bionic, 128GB",
                ValorCusto = 4500.00m,
                ValorVenda = 6999.99m,
                QtdeEstoque = 10,
                Destaque = true
            }
        };
        builder.Entity<Produto>().HasData(produtos);

        List<ProdutoFoto> fotos = new() {
            new() { Id = 1, ProdutoId = 1, Foto = "/img/produtos/1/1.png"},
            new() { Id = 2, ProdutoId = 1, Foto = "/img/produtos/1/2.png"},
            new() { Id = 3, ProdutoId = 1, Foto = "/img/produtos/1/3.png"},
        };
        builder.Entity<ProdutoFoto>().HasData(fotos);

    }
}
