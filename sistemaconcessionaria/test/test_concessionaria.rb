require 'minitest/autorun'
require './app/carro'
require './app/concessionaria'

class TestConcessionaria < Minitest::Test

  def test_estado_inicial
    con = Concessionaria.new
    assert_equal 0.0, con.saldo_total_vendas
    assert_equal 5, con.estoque.size
    assert_equal 2, con.estoque_corolla.size
    assert_equal 3, con.estoque_yaris.size
  end

  def test_venda
    con = Concessionaria.new
    con.venda('Corolla')
    con.venda('Corolla')
    con.venda('Yaris')
    assert_equal 420_000, con.saldo_total_vendas
    assert_equal 2, con.estoque.size
    assert_equal 0, con.estoque_corolla.size
    assert_equal 2, con.estoque_yaris.size
  end
end