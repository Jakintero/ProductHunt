module ProductsHelper
  def form_title
    #Lo siguiente es igual a hacer condicional con "if y else"
    @product.new_record? ? "Publicar Producto" : "Modificar Producto"
  end
end
