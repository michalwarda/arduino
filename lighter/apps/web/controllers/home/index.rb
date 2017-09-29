module Web::Controllers::Home
  class Index
    include Web::Action

    def call(params)
      port_str = '/dev/cu.usbmodem1421'
      baud_rate = 9600
      data_bits = 8
      stop_bits = 1
      parity = SerialPort::NONE

      sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

      if params[:on] == "true"
        sp.write "1"
      elsif params[:on] == "false"
        sp.write "0"
      end
    end
  end
end
