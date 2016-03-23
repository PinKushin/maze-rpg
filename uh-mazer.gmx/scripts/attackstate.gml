///attackstate
getinput();
image_speed = 0.5;
hspd = 0
vspd = 0

switch (sprite_index)
{
    case splayerdown: 
         sprite_index = splayerattackdown
         break;
    
    case splayerup:
         sprite_index = splayerattackup
         break;
    
    case splayerleft:
         sprite_index = splayerattackleft
         break;
    
    case splayerright:
         sprite_index = splayerattackright
         break;
}
if image_index >= 3 && attacked == false
{
    var xx = 0;
    var yy = 0;
    
    switch (sprite_index)
    {
        case splayerattackdown:
             xx = x;
             yy = y + 14;
             break;
        
        case splayerattackup:
             xx = x;
             yy = y - 10;
             break;
        
        case splayerattackleft:
             xx = x - 10;
             yy = y + 2;
             break;
        
        case splayerattackright:
             xx = x + 10;
             yy = y + 2;
             break;
    }
    var damage = instance_create (xx, yy, opdamage);
    damage.creator = id;
    damage.damage = oplayerstats.attack;
    attacked = true;
}
