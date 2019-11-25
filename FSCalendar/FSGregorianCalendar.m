//
//  FSGregorianCalendar.m
//  FSCalendarSwiftExample
//
//  Created by Federico Frappi on 05/06/2018.
//  Copyright © 2018 wenchao. All rights reserved.
//

#import "FSGregorianCalendar.h"

@interface FSGregorianCalendar ()

@property (nonatomic, strong) NSDateComponents *fs_privateComponents;

@property (nonatomic, strong) NSDateFormatter *weekDateFormatter;
@property (nonatomic, strong) NSDateFormatter *yearDateFormatter;
@property (nonatomic, strong) NSDateFormatter *monthDateFormatter;

@end


@implementation FSGregorianCalendar

- (instancetype)init{
    if (self = [super initWithCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian]]) {
        _fs_privateComponents = [[NSDateComponents alloc] init];
        
        _weekDateFormatter = [[NSDateFormatter alloc] init];
        _weekDateFormatter.dateFormat = @"w";
        
        _yearDateFormatter = [[NSDateFormatter alloc] init];
        _yearDateFormatter.dateFormat = @"yyyy";
        
        _monthDateFormatter = [[NSDateFormatter alloc] init];
        _monthDateFormatter.dateFormat = @"MMMM";
        
    }
    return self;
}

- (nullable NSDate *)fs_firstDayOfMonth:(nonnull NSDate *)month{
    NSDateComponents *components = [self.calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour fromDate:month];
    components.day = 1;
    return [self.calendar dateFromComponents:components];
}

- (nullable NSDate *)fs_firstDayOfMonthByAddingMonths:(NSInteger)months toDate:(nonnull NSDate *)startDate{
    return [self fs_firstDayOfMonth: [self.calendar dateByAddingUnit:NSCalendarUnitMonth value:months toDate:startDate options:0]];
}

- (nullable NSDate *)fs_lastDayOfMonth:(nonnull NSDate *)month{
    NSDateComponents *components = [self.calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour fromDate:month];
    components.month++;
    components.day = 0;
    return [self.calendar dateFromComponents:components];
}

- (nullable NSDate *)fs_firstDayOfWeek:(nonnull NSDate *)week{
    NSDateComponents *weekdayComponents = [self.calendar components:NSCalendarUnitWeekday fromDate:week];
    NSDateComponents *components = self.fs_privateComponents;
    components.day = - (weekdayComponents.weekday - self.calendar.firstWeekday);
    components.day = (components.day-7) % 7;
    NSDate *firstDayOfWeek = [self.calendar dateByAddingComponents:components toDate:week options:0];
    firstDayOfWeek = [self.calendar dateBySettingHour:0 minute:0 second:0 ofDate:firstDayOfWeek options:0];
    components.day = NSIntegerMax;
    return firstDayOfWeek;
}

- (nullable NSDate *)fs_lastDayOfWeek:(nonnull NSDate *)week{
    NSDateComponents *weekdayComponents = [self.calendar components:NSCalendarUnitWeekday fromDate:week];
    NSDateComponents *components = self.fs_privateComponents;
    components.day = - (weekdayComponents.weekday - self.calendar.firstWeekday);
    components.day = (components.day-7) % 7 + 6;
    NSDate *lastDayOfWeek = [self.calendar dateByAddingComponents:components toDate:week options:0];
    lastDayOfWeek = [self.calendar dateBySettingHour:0 minute:0 second:0 ofDate:lastDayOfWeek options:0];
    components.day = NSIntegerMax;
    return lastDayOfWeek;
}

- (nullable NSDate *)fs_middleDayOfWeek:(nonnull NSDate *)week{
    NSDateComponents *weekdayComponents = [self.calendar components:NSCalendarUnitWeekday fromDate:week];
    NSDateComponents *componentsToSubtract = self.fs_privateComponents;
    componentsToSubtract.day = - (weekdayComponents.weekday - self.calendar.firstWeekday) + 3;
    NSDate *middleDayOfWeek = [self.calendar dateByAddingComponents:componentsToSubtract toDate:week options:0];
    NSDateComponents *components = [self.calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour fromDate:middleDayOfWeek];
    middleDayOfWeek = [self.calendar dateFromComponents:components];
    componentsToSubtract.day = NSIntegerMax;
    return middleDayOfWeek;
}

- (NSInteger)fs_numberOfDaysInMonth:(nonnull NSDate *)month{
    NSRange days = [self.calendar rangeOfUnit:NSCalendarUnitDay
                                       inUnit:NSCalendarUnitMonth
                                      forDate:month];
    return days.length;
}

- (nullable NSString *)fs_weekNumberForDate:(nonnull NSDate *)date{
    return [self.weekDateFormatter stringFromDate:date];
}

- (nullable NSString *)fs_monthNameForDate:(nonnull NSDate *)date{
    return [self.monthDateFormatter stringFromDate:date];
}

- (nullable NSString *)fs_yearForDate:(nonnull NSDate *)date{
    return [self.yearDateFormatter stringFromDate:date];
}

@end
