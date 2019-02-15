//
//  MIDGopayView.m
//  MidtransKit
//
//  Created by Vanbungkring on 11/24/17.
//  Copyright © 2017 Midtrans. All rights reserved.
//

#import "MIDGopayView.h"
#import "VTClassHelper.h"
#import "MidtransUINextStepButton.h"
@implementation MIDGopayView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self.finishPaymentButton setTitle:[VTClassHelper getTranslationFromAppBundleForString:@"confirm.payment"] forState:UIControlStateNormal];
      self.totalAmountLabel.text = [VTClassHelper getTranslationFromAppBundleForString:@"total.amount"];
    [self.installGojekButton setTitle:[VTClassHelper getTranslationFromAppBundleForString:@"install.gojek"] forState:UIControlStateNormal];
    
    [self.finishPaymentButton setTitle:[VTClassHelper getTranslationFromAppBundleForString:@"Pay Now with GO-PAY"] forState:UIControlStateNormal];
    UIImage *image = [UIImage imageNamed:@"gopay_button" inBundle:VTBundle compatibleWithTraitCollection:nil];
    [self.finishPaymentButton setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    self.finishPaymentButton.semanticContentAttribute = UISemanticContentAttributeForceRightToLeft;
    self.finishPaymentButton.imageView.tintColor = [UIColor whiteColor];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
