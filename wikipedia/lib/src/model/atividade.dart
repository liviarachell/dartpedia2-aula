

import 'title_set.dart';

class PaginaProduto {
  // Use 'final' para atributos que são definidos apenas uma vez no construtor
  final int id;
  final Produto produto;
  final Marca marca;
  final Preco preco;
  final Parcelamento parcelamento;
  final List<Variacao> variacoes;
  final Carrinho carrinho;
  final Fidelidade fidelidade;
  final GaleriaImagens galeria;
  final Categoria categoria;
  final Estoque estoque;
  final Entrega entrega;
  final Vendedor vendedor;
  final List<Avaliacao> avaliacoes;
  final Especificacao especificacao;
  final Metadados metadados;

  // Construtor padrão
  PaginaProduto({
    required this.id,
    required this.produto,
    required this.marca,
    required this.preco,
    required this.parcelamento,
    required this.variacoes,
    required this.carrinho,
    required this.fidelidade,
    required this.galeria,
    required this.categoria,
    required this.estoque,
    required this.entrega,
    required this.vendedor,
    required this.avaliacoes,
    required this.especificacao,
    required this.metadados,
  });
}

class Produto {
  final int id;
  final String nome;
  final String descricao;

  Produto({
    required this.id,
    required this.nome,
    required this.descricao,
  });
}

class Marca {
  final int id;
  final String nome;
  final String origem;

  Marca({
    required this.id,
    required this.nome,
    required this.origem,
  });
}

class Preco {
  // Alterado para double para suportar centavos (ex: 19.90)
  final double valorAtual;
  final double valorOriginal;
  final double desconto;

  Preco({
    required this.valorAtual,
    required this.valorOriginal,
    required this.desconto,
  });
}

class Parcelamento {
  final int quantidade;
  final double valorParcela; // double para valores decimais
  final String status;

  Parcelamento({
    required this.quantidade,
    required this.valorParcela,
    required this.status,
  });
}

class Variacao {
  final int id;
  final String tipo;
  final String valor;

  Variacao({
    required this.id,
    required this.tipo,
    required this.valor,
  });
}

class Carrinho {
  final int quantidade;
  final String status;

  Carrinho({
    required this.quantidade,
    required this.status,
  });
}

class Fidelidade {
  final int pontos;
  final int bonus;
  final String nivel;

  Fidelidade({
    required this.pontos,
    required this.bonus,
    required this.nivel,
  });
}

class GaleriaImagens {
  final List<String> imagens;
  final String principal;

  GaleriaImagens({
    required this.imagens,
    required this.principal,
  });
}

class Categoria {
  final int id;
  final String nome;
  final String subcategoria;

  Categoria({
    required this.id,
    required this.nome,
    required this.subcategoria,
  });
}

class Estoque {
  final int quantidade;
  final String status;

  Estoque({
    required this.quantidade,
    required this.status,
  });
}

class Entrega {
  final String tipoFrete;
  final String prazo;
  final String regiao;

  Entrega({
    required this.tipoFrete,
    required this.prazo,
    required this.regiao,
  });
}

class Vendedor {
  final int id;
  final String nome;
  final String reputacao;

  Vendedor({
    required this.id,
    required this.nome,
    required this.reputacao,
  });
}

class Avaliacao {
  final int id;
  final String usuario;
  final String comentario;

  Avaliacao({
    required this.id,
    required this.usuario,
    required this.comentario,
  });
}

class Especificacao {
  final String chave;
  final String valor;

  Especificacao({
    required this.chave,
    required this.valor,
  });
}

class Metadados {
  final String plataforma;
  final String idioma;
  final String moeda;

  Metadados({
    required this.plataforma,
    required this.idioma,
    required this.moeda,
  });
}