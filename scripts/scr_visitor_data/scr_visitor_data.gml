global.money = 0;
global.visitors_seen = 0;
global.daily_earnings = 0;
global.daily_penalties = 0;

global.current_visitor_index = 0;
    
global.visitor_database = [
    
    {
        name: "Paster Bob",
        sprite: spr_paster, 
        dialogue: "You need to print this.",
        article_type: "religeon",
        article_text: "BREAKING NEWS.",
        has_certificate: true,
        is_stamped: true,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
    {
        name: "Crack Head",
        sprite: spr_crack_head, 
        dialogue: "Put this on the front page!",
        article_type: "non-sence",
        article_text: "UPDATE.",
        has_certificate: true,
        is_stamped: false,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
    {
        name: "Dr Boss",
        sprite: spr_dr_boss, 
        dialogue: "Put this on the front page!",
        article_type: "sicence",
        article_text: "UPDATE.",
        has_certificate: true,
        is_stamped: true,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
    {
        name: "Hubert Billingsworth",
        sprite: spr_hubert_billingsworth, 
        dialogue: "Put this on the front page!",
        article_type: "money",
        article_text: "UPDATE.",
        has_certificate: false,
        is_stamped: false,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
    {
        name: "Hippy",
        sprite: spr_hippy, 
        dialogue: "Put this on the front page!",
        article_type: "non-sence",
        article_text: "UPDATE.",
        has_certificate: true,
        is_stamped: false,
        dialogue_yes: "Thank you.",
        dialogue_no: "Are you blind? This is real journalism!"
    },
    
];


