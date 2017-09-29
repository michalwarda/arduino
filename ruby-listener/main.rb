require 'serialport'
require 'pocketsphinx-ruby'

port_str = '/dev/cu.usbmodem1421'
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE
sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

configuration = Pocketsphinx::Configuration::KeywordSpotting.new('turn it on')
Pocketsphinx::LiveSpeechRecognizer.new(configuration).recognize { |speech| p "on!"; sp.write "1" }

configuration2 = Pocketsphinx::Configuration::KeywordSpotting.new('turn it off')
Pocketsphinx::LiveSpeechRecognizer.new(configuration2).recognize { |speech| p "off!"; sp.write "0" }
