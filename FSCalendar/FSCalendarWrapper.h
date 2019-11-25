//
//  FSCustomCalendar.h
//  FSCalendarSwiftExample
//
//  Created by Federico Frappi on 05/06/2018.
//  Copyright © 2018 wenchao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FSCalendarWrapper : NSObject

@property (nonatomic, strong, readonly, nonnull) NSCalendar *calendar;

- (nonnull instancetype)initWithCalendar:(nonnull NSCalendar *)calendar;


// NSCalendar Related methods
- (nonnull NSCalendarIdentifier)calendarIdentifier;

- (NSUInteger)firstWeekday;
- (void)setFirstWeekday:(NSUInteger)firstWeekday;

- (nullable NSLocale *)locale;
- (void)setLocale:(nullable NSLocale *)locale;

- (nonnull NSTimeZone *)timeZone;
- (void)setTimeZone:(nonnull NSTimeZone *)timeZone;

- (nonnull NSArray<NSString *> *)shortStandaloneWeekdaySymbols;
- (nonnull NSArray<NSString *> *)veryShortStandaloneWeekdaySymbols;

- (NSComparisonResult)compareDate:(nonnull NSDate *)date1 toDate:(nonnull NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit;

- (nonnull NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(nonnull NSDate *)startingDate toDate:(nonnull NSDate *)resultDate options:(NSCalendarOptions)opts;
- (nonnull NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(nonnull NSDate *)date;
- (NSInteger)component:(NSCalendarUnit)unit fromDate:(nonnull NSDate *)date;

- (nullable NSDate *)dateFromComponents:(nonnull NSDateComponents *)comps;
- (nullable NSDate *)dateByAddingComponents:(nonnull NSDateComponents *)comps toDate:(nonnull NSDate *)date options:(NSCalendarOptions)opts;
- (nullable NSDate *)dateBySettingHour:(NSInteger)h minute:(NSInteger)m second:(NSInteger)s ofDate:(nonnull NSDate *)date options:(NSCalendarOptions)opts;
- (nullable NSDate *)dateByAddingUnit:(NSCalendarUnit)unit value:(NSInteger)value toDate:(nonnull NSDate *)date options:(NSCalendarOptions)options;

- (BOOL)isDate:(nonnull NSDate *)date1 equalToDate:(nonnull NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit;
- (BOOL)isDate:(nonnull NSDate *)date1 inSameDayAsDate:(nonnull NSDate *)date2;
- (BOOL)isDateInWeekend:(nonnull NSDate *)date;


// Additional helper methods
- (nullable NSDate *)fs_firstDayOfMonth:(nonnull NSDate *)month;
- (nullable NSDate *)fs_firstDayOfMonthByAddingMonths:(NSInteger)months toDate:(nonnull NSDate *)startDate;

- (nullable NSDate *)fs_lastDayOfMonth:(nonnull NSDate *)month;
- (nullable NSDate *)fs_firstDayOfWeek:(nonnull NSDate *)week;
- (nullable NSDate *)fs_lastDayOfWeek:(nonnull NSDate *)week;
- (nullable NSDate *)fs_middleDayOfWeek:(nonnull NSDate *)week;
- (NSInteger)fs_numberOfDaysInMonth:(nonnull NSDate *)month;

- (nullable NSString *)fs_weekNumberForDate:(nonnull NSDate *)date;
- (nullable NSString *)fs_monthNameForDate:(nonnull NSDate *)date;
- (nullable NSString *)fs_yearForDate:(nonnull NSDate *)date;

@end
