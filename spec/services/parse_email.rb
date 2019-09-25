require 'rails_helper'

describe ParseEmail do
  describe '#call' do
    context 'parses email' do
      file = Mail.read('public/emails/635508b6-a8e9-4fca-9d1e-2663da861a66.eml')

      before(:all) do
        @email = ParseEmail.new(file).call
      end

      it { expect(@email['name']).to eq ' Teste C2S' }
      it { expect(@email['phone']).to eq ' (19) 99999-9999 (Prefere ser contatado via WhatsApp)' }
      it { expect(@email['car']).to eq ' JETTA 1.4 16V TSI TRENDLINE  TIPTRONIC ' }
      it { expect(@email['value']).to eq ' R$ 61.990,00 ' }
      it { expect(@email['year']).to eq ' 2016/2016 ' }
      it do
        expect(@email['link_car'])
          .to eq 'https://comprecar.com.br/carros-usados/campinas/jetta-14-16v-tsi-trendline-gasolina-4p-tiptronic-1192512'
      end
    end
  end
end
