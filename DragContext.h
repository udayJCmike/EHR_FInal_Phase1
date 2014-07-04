//
//  Created by jve on 4/2/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface DragContext : NSObject
@property(nonatomic, retain, readonly) UIView *draggedView;
@property(nonatomic, retain) UIView *originalView;


- (id)initWithDraggedView:(UIView *)draggedView;

- (void)snapToOriginalPosition;
@end