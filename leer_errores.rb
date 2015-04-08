# Utilizar el reto de HTTParty, el servicio cambió, ahora tiene dominio: hackapi.jgab.net

# La data que existía en el servicio desapareció y el servicio sufrió modificaciones.

# Registren su usuario de nuevo en el api.

# Único cambio conocido del api: no se usa idenity, se filtra por username y debe ser el de slack.

# NOTA: lean los errores que da el server.!!!, ahí estarán las respuestas que necesitan.

# el resultado del reto saldrá por http://hackapi.jgab.net/api/users/hackers, 
# para que puedan realizar el siguiente reto HTTP al menos 8 tienen que haber culminado el reto.

require 'httparty'
class Hacker
	include HTTParty
	base_uri 'http://45.55.172.121:3000/api/users'
	
	def add(user)
		options = {body: user}
		self.class.post('', options)
	end
	def list
		self.class.get('/hackers')
	end
	def edit(username, users)
		options = {body: users}
		self.class.put('/' + username, options)
	end
	def delete(username)
		self.class.delete('/'+username)
	end
	def get(username)
		self.class.get('/'+username)
	end
	def active(username, users)
		options = {body: users}
		self.class.put('/'+username	, options) 
	end
end
def main
hector12jc = Hacker.new

# print hector12jc.add({"address": "El junquito", 
#   "username": "@hector12jc", 
#   "fullname": "Hector Carreño", 
#   "email": "hector12j@gmail.com",
#   "gender": "male",});
#print hector12jc.edit("@hector12jc","email": "hector12j@gmail.com")
#print hector12jc.get("@hector12jc")
#print hector12jc.list
print hector12jc.active("@hector12jc", "status": "active")
end
main


	