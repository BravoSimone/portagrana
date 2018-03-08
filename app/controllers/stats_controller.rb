class StatsController < ApplicationController
  def index
    daily_charges = Transaction.group_by_day(:created_at, day_start: 0, last:30)
                               .sum(:price)

    @lines = [
      { name: 'Charges', data: daily_charges},
      { name: 'Budget', data: daily_charges.map do |date|
          [Date.parse(date.to_s), 40]
        end
      }
    ]
  end
end
