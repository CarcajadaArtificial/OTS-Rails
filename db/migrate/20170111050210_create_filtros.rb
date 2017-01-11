class CreateFiltros < ActiveRecord::Migration[5.0]
  def change
    create_table :filtros do |t|
      t.string :empresa_filtro,     null: false
      t.string :fechainicio_filtro, null: false
      t.string :fechafin_filtro,    null: false

      t.timestamps
    end
  end
end
