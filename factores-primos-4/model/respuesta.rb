class Respuesta  
 
  def initialize(status, body)  
    @status = status  
    @body = body  
  end  
 
  def getStatus
    return @status  
  end 
  
  def getBody
    return @body  
  end
 
end