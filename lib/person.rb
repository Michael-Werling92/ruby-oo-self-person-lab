class Person
    attr_reader :name
    attr_writer :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name=name
        @bank_account= 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        if @happiness < 0
            @happiness = 0 
        elsif @happiness > 10
            @happiness = 10 
        else
            @happiness 
        end
    end

    def hygiene
        if @hygiene < 0
            @hygiene = 0 
        elsif @hygiene > 10
            @hygiene = 10 
        else
            @hygiene
        end
    end
    
    def clean?
        self.hygiene > 7 
    end
    
    def happy?
        self.happiness > 7
    end
    
    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @friend=Person.new(friend)

        self.happiness += 3
        friend.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        @person=Person.new(person)

        if topic == 'politics'
            self.happiness -= 2
            person.happiness -=2
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end
