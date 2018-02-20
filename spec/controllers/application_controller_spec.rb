require 'rails_helper'

describe 'Navmenu' do
  it 'returns itself as is.' do
    expect('hello world').to eq 'hello world'
  end
 
  context '#exclamatize' do
    # 数を指定しない時は、「!」を1個追加
    #describe 'returns string with one exclamation mark.' do
    #  specify { expect( exclamatize('hello world') ).to eq 'hello world!' }
    #end
 
    ## 数を指定した時は、「!」を指定した数だけ追加
    #describe 'returns string with three exclamation mark.' do
    #  specify { expect( exclamatize('hello world', 3) ).to eq 'hello world!!!' }
    #end
  end
end
