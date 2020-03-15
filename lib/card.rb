class Card
    def initialize(suit:, rank:)
            @suit = suit
            @rank = case rank
            when  :jack then 11
            when  :queen then 12
            when  :king then 13
            else rank
        end
    end      

def suit
     @suit
end
 
def rank
    @rank
end 

end

