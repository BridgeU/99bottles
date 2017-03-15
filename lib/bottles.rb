class Bottles
  STARTING_BOTTLES = 99

  class BottleGroup
    attr_accessor :count

    def initialize(count)
      @count = count
    end

    def description
      case count
        when 0
          "no more bottles"
        when 1
          "1 bottle"
        else
          "#{count} bottles"
        end
    end

    def removal_imperative
      case count
        when 1
          "take it down"
        else
          "take one down"
      end
    end
  end

  def verse(bottle_removed)
    current_bottle_state = BottleGroup.new(bottle_removed)
    line_1 = first_line(current_bottle_state)
    line_2 = second_line(current_bottle_state)

    line_1 + "\n" + line_2 + "\n"
  end

  private

  def first_line(bottle_state)
    description = bottle_state.description
    "#{description.capitalize} of beer on the wall, #{description} of beer."
  end

  def second_line(bottle_state)
    action = future_action_text(bottle_state)

    eventual_state = if bottle_state.count == 0
      BottleGroup.new(STARTING_BOTTLES)
    else
     puts bottle_state.count
      BottleGroup.new(bottle_state.count - 1)
    end

    "#{action.capitalize}, #{eventual_state.description} of beer on the wall."
  end

  def future_action_text(removed_bottle)
    case removed_bottle.count
    when 0
      "Go to the store and buy some more"
    else
      action_description = removed_bottle.removal_imperative
      "#{action_description} and pass it around"
    end
  end
end
