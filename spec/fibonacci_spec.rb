require 'fibonacci.rb'

describe Fibonacci do
    describe '#fibonacci_interative_first_n' do
        subject {Fibonacci.fibonacci_interative_first_n(5)}
        
        it "is not empty" do
            expect(subject).not_to be_empty
        end
        it "has five elements" do
            expect(subject.size).to eq(5)
        end
        it "works with a big range" do
            result = Fibonacci.fibonacci_interative_first_n(49)
            expect(result[48]).to eq(4807526976)
        end
    end
end