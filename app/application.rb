class Application

  def call(env)
    resp = Rack::Response.new
    resp.write num_1 = "#{Kernel.rand(1..2)}"
    resp.write num_2 = "#{Kernel.rand(1..2)}"
    resp.write num_3 = "#{Kernel.rand(1..2)}"

    if num_1==num_2 && num_2==num_3
      resp.write "\nYou Win!"
    else
      resp.write "\nYou Lose"
    end

    resp.finish
  end

end
