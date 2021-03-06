module ProductsHelper
  def form_title
    #Lo siguiente es igual a hacer condicional con "if y else"
    @product.new_record? ? "Publicar Producto" : "Modificar Producto"
  end

  def header_style
    if @product.image.exists?
      %{ style="background-image: linear-gradient( rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25) ), url('#{@product.image.url}'); background-size: cover; background-position: center;" }.html_safe
    else
      ""
    end
  end
end
