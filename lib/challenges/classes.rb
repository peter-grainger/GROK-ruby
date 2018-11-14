class Ship
    attr_reader :shout
    # Add getters and setters for the captain variable

    def initialize
        # Add @shout variable
        # Don't change the captain!
        @captain = "Jack Sparrow"
        @sails = 3
    end

    # LEAVE THE SAILS ALONE
    def sails
        @sails
    end

    # Create a to_s method that summerises this class

    # Make the sails method private
end

# Change class to inherit from Ship
class ManOWar
    def initialize
        # Call the constructor of the superclass
        # Change the Captain
    end

    # Add the shout_out method and access superclass
end