class Concessionaria
    def initialize
      @saldo_total_vendas = 0.0
      corolla_azul = Carro.new('Corolla')
      corolla_prata = Carro.new('Corolla')
      yaris_prata = Carro.new('Yaris')
      yaris_preto = Carro.new('Yaris')
      yaris_branco = Carro.new('Yaris')
      @estoque = [corolla_azul, corolla_prata, yaris_prata, yaris_preto, yaris_branco]
    end
  
    def saldo_total_vendas
      @saldo_total_vendas
    end
  
    def estoque
      @estoque
    end
  
    def estoque_corolla
      corollas = []
  
      @estoque.each do |carro|
        if carro.modelo == 'Corolla'
          corollas << carro
        end
      end
  
      corollas
    end
  
    def estoque_yaris
      yarises = []
  
      @estoque.each do |carro|
        if carro.modelo == 'Yaris'
          yarises << carro
        end
      end
  
      yarises
    end
  
    def venda(modelo)
      estoque.each do |carro|
        if carro.modelo == modelo && modelo == 'Corolla'
          @saldo_total_vendas += 150_000
          @estoque.delete(carro)
          break
        end
  
        if carro.modelo == modelo && modelo == 'Yaris'
          @saldo_total_vendas += 120_000
          @estoque.delete(carro)
          break
        end
      end
    end
  end