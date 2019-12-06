json.extract! user, :id, :nombre, :apellido, :rut, :correo, :contraseña, :sucursal, :filas, :created_at, :updated_at
json.url user_url(user, format: :json)
