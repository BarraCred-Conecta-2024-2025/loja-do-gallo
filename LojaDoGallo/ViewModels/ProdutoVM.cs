using LojaDoGallo.Models;

namespace LojaDoGallo.ViewModels;

public class ProdutoVM
{
    public Produto Produto { get; set; }
    public List<Produto> Semelhantes { get; set; }
}
