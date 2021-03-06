//
//  DTCTestButton.m
//  Pop Tapped Button
//
//
// My copy of Rundles work
//

#import "DTCTestButton.h"

@implementation DTCTestButton

#pragma mark -
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    POPSpringAnimation *scale = [self pop_animationForKey:@"scale"]; //Grabbing the animation.
    POPSpringAnimation *rotate = [self pop_animationForKey:@"rotate"];
    
    //If scale exists reassign a value, else create and animate.
    if (scale) {
        scale.toValue = [NSValue valueWithCGPoint:CGPointMake(0.8, 0.8)];
    } else {
        scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        scale.toValue = [NSValue valueWithCGPoint:CGPointMake(0.8, 0.8)];
        scale.springBounciness = 20;
        scale.springSpeed = 18.0f;
        [self pop_animationForKey:@"scale"];
    }
    
    if (rotate) {
        rotate.toValue = @(M_PI/6);
        rotate.springBounciness = 20;
        rotate.springSpeed = 18.0f;
    } else {
        rotate = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
        rotate.toValue = @(M_PI/6);
        rotate.springBounciness = 20;
        rotate.springSpeed = 18.0f;
        
        [self.layer pop_animationForKey:@"rotate"];
    }
    
    [super touchesBegan:touches withEvent:event];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {

    POPSpringAnimation *scale = [self pop_animationForKey:@"scale"];
    POPSpringAnimation *rotate = [self pop_animationForKey:@"rotate"];
    
    if (scale) {
        scale.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    } else {
        scale = [POPSpringAnimation animationWithPropertyNamed:@"scale"];
        
        if (scale) {
            scale.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
            scale.springBounciness = 20;
            scale.springSpeed = 18.0f;
            [self pop_animationForKey:@"scale"];
        }
    }
    
    if (rotate) {
        rotate.toValue = @(0);
        rotate.springBounciness = 20;
        rotate.springSpeed = 18.0f;
    } else {
        rotate = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
        rotate.toValue = @(0);
        rotate.springBounciness = 20;
        rotate.springSpeed = 18.0f;
        
        [self.layer pop_animationForKey:@"rotate"];
    }
    
    [super touchesEnded:touches withEvent:event];
}


@end
