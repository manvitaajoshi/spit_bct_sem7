pragma solidity ^0.8.17;

contract CreditCardLimit {
    uint card_limit = 10000;
    uint travel_cost;
    uint food_cost;
    uint stay_cost;

    function set_travel_cost (uint cost) public {
        travel_cost = cost;
    }

    function set_food_cost (uint cost) public {
        food_cost = cost;
    }
    
    function set_stay_cost (uint cost) public {
        stay_cost = cost;
    }

    function get_remaining_balance() public view returns(uint){
        return card_limit - (travel_cost + food_cost + stay_cost);
    }
}