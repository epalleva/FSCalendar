//
//  FSCustomCalendar.m
//  FSCalendarSwiftExample
//
//  Created by Federico Frappi on 05/06/2018.
//  Copyright © 2018 wenchao. All rights reserved.
//

#import "FSCalendarWrapper.h"
#import "NSCalendar+Locale.h"

@interface FSCalendarWrapper()

@end

@implementation FSCalendarWrapper

- (instancetype)initWithCalendar:(nonnull NSCalendar*)calendar{
    if (self = [super init]){
        _calendar = calendar;
    }
    return self;
}

- (nullable NSDate *)fs_firstDayOfMonth:(nonnull NSDate *)month{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSDate *)fs_firstDayOfMonthByAddingMonths:(NSInteger)months toDate:(nonnull NSDate *)startDate{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSDate *)fs_lastDayOfMonth:(nonnull NSDate *)month{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSDate *)fs_firstDayOfWeek:(nonnull NSDate *)week{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSDate *)fs_lastDayOfWeek:(nonnull NSDate *)week{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSDate *)fs_middleDayOfWeek:(nonnull NSDate *)week{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (NSInteger)fs_numberOfDaysInMonth:(nonnull NSDate *)month{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSString *)fs_weekNumberForDate:(nonnull NSDate *)date{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSString *)fs_monthNameForDate:(nonnull NSDate *)date{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nullable NSString *)fs_yearForDate:(nonnull NSDate *)date{
    @throw [NSException exceptionWithName:@"Unimplemented" reason:@"This method must be implemented by a subclass" userInfo:nil];
}

- (nonnull NSCalendarIdentifier)calendarIdentifier{
    return _calendar.calendarIdentifier;
}

- (nullable NSLocale *)locale{
    return _calendar.locale;
}

- (void)setLocale:(nullable NSLocale *)locale{
    _calendar.locale = locale;
}

- (nonnull NSTimeZone *)timeZone{
    return _calendar.timeZone;
}

- (void)setTimeZone:(nonnull NSTimeZone *)timeZone{
    _calendar.timeZone = timeZone;
}

- (NSUInteger)firstWeekday{
    return _calendar.firstWeekday;
}

- (void)setFirstWeekday:(NSUInteger)firstWeekday{
    _calendar.firstWeekday = firstWeekday;
}
//
//- (NSUInteger)minimumDaysInFirstWeek {
//    return _calendar.minimumDaysInFirstWeek;
//}
//
//- (void)setMinimumDaysInFirstWeek:(NSUInteger)minimumDaysInFirstWeek{
//    _calendar.minimumDaysInFirstWeek = minimumDaysInFirstWeek;
//}
//
//- (NSArray<NSString *> *)eraSymbols{
//    return _calendar.eraSymbols;
//}
//
//- (NSArray<NSString *> *)longEraSymbols{
//    return _calendar.longEraSymbols;
//}
//
//- (NSArray<NSString *> *)monthSymbols {
//    return _calendar.monthSymbols;
//}
//
//- (NSArray<NSString *> *)shortMonthSymbols{
//    return _calendar.shortMonthSymbols;
//}
//
//- (NSArray<NSString *> *)veryShortMonthSymbols {
//    return _calendar.veryShortMonthSymbols;
//}
//
//- (NSArray<NSString *> *)standaloneMonthSymbols {
//    return _calendar.standaloneMonthSymbols;
//}
//
//- (NSArray<NSString *> *)shortStandaloneMonthSymbols {
//    return _calendar.shortStandaloneMonthSymbols;
//}
//
//- (NSArray<NSString *> *)veryShortStandaloneMonthSymbols {
//    return _calendar.veryShortStandaloneMonthSymbols;
//}
//
//- (NSArray<NSString *> *)weekdaySymbols {
//    return _calendar.weekdaySymbols;
//}
//
//- (NSArray<NSString *> *)shortWeekdaySymbols {
//    return _calendar.shortWeekdaySymbols;
//}
//
//- (NSArray<NSString *> *)veryShortWeekdaySymbols {
//    return _calendar.veryShortWeekdaySymbols;
//}
//
//- (NSArray<NSString *> *)standaloneWeekdaySymbols {
//    return _calendar.standaloneWeekdaySymbols;
//}

- (nonnull NSArray<NSString *> *)shortStandaloneWeekdaySymbols {
    return _calendar.local.shortStandaloneWeekdaySymbols;
}

- (nonnull NSArray<NSString *> *)veryShortStandaloneWeekdaySymbols {
    return _calendar.local.veryShortStandaloneWeekdaySymbols;
}

//- (NSArray<NSString *> *)quarterSymbols {
//    return _calendar.quarterSymbols;
//}
//
//- (NSArray<NSString *> *)shortQuarterSymbols {
//    return _calendar.shortQuarterSymbols;
//}
//
//- (NSArray<NSString *> *)standaloneQuarterSymbols {
//    return _calendar.standaloneQuarterSymbols;
//}
//
//- (NSArray<NSString *> *)shortStandaloneQuarterSymbols {
//    return _calendar.shortStandaloneQuarterSymbols;
//}
//
//- (NSString *)AMSymbol {
//    return _calendar.AMSymbol;
//}
//
//- (NSString *)PMSymbol {
//    return _calendar.PMSymbol;
//}
//
//- (NSRange)minimumRangeOfUnit:(NSCalendarUnit)unit {
//    return [_calendar minimumRangeOfUnit:unit];
//}
//
//- (NSRange)maximumRangeOfUnit:(NSCalendarUnit)unit {
//    return [_calendar maximumRangeOfUnit:unit];
//}
//
//- (NSRange)rangeOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date {
//    return [_calendar rangeOfUnit:smaller inUnit:larger forDate:date];
//}
//
//- (NSUInteger)ordinalityOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date {
//    return [_calendar ordinalityOfUnit:smaller inUnit:larger forDate:date];
//}
//
//
//- (BOOL)rangeOfUnit:(NSCalendarUnit)unit startDate:(NSDate * _Nullable * _Nullable)datep interval:(nullable NSTimeInterval *)tip forDate:(NSDate *)date{
//    return [_calendar rangeOfUnit:unit startDate:datep interval:tip forDate:date];
//}

- (nullable NSDate *)dateFromComponents:(nonnull NSDateComponents *)comps{
    return [_calendar dateFromComponents:comps];
}

- (nonnull NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(nonnull NSDate *)date{
    return [_calendar components:unitFlags fromDate:date];
}

- (nullable NSDate *)dateByAddingComponents:(nonnull NSDateComponents *)comps toDate:(nonnull NSDate *)date options:(NSCalendarOptions)opts{
    return [_calendar dateByAddingComponents:comps toDate:date options:opts];
}

- (nonnull NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(nonnull NSDate *)startingDate toDate:(nonnull NSDate *)resultDate options:(NSCalendarOptions)opts{
    return [_calendar components:unitFlags fromDate:startingDate toDate:resultDate options:opts];
}

//- (void)getEra:(out nullable NSInteger *)eraValuePointer year:(out nullable NSInteger *)yearValuePointer month:(out nullable NSInteger *)monthValuePointer day:(out nullable NSInteger *)dayValuePointer fromDate:(NSDate *)date{
//    return [_calendar getEra:eraValuePointer year:yearValuePointer month:monthValuePointer day:dayValuePointer fromDate:date];
//}
//
//- (void)getEra:(out nullable NSInteger *)eraValuePointer yearForWeekOfYear:(out nullable NSInteger *)yearValuePointer weekOfYear:(out nullable NSInteger *)weekValuePointer weekday:(out nullable NSInteger *)weekdayValuePointer fromDate:(NSDate *)date {
//    return [_calendar getEra:eraValuePointer yearForWeekOfYear:yearValuePointer weekOfYear:weekValuePointer weekday:weekdayValuePointer fromDate:date];
//}
//
//- (void)getHour:(out nullable NSInteger *)hourValuePointer minute:(out nullable NSInteger *)minuteValuePointer second:(out nullable NSInteger *)secondValuePointer nanosecond:(out nullable NSInteger *)nanosecondValuePointer fromDate:(NSDate *)date {
//    return [_calendar getHour:hourValuePointer minute:minuteValuePointer second:secondValuePointer nanosecond:nanosecondValuePointer fromDate:date];
//}

- (NSInteger)component:(NSCalendarUnit)unit fromDate:(nonnull NSDate *)date {
    return [_calendar component:unit fromDate:date];
}

//- (nullable NSDate *)dateWithEra:(NSInteger)eraValue year:(NSInteger)yearValue month:(NSInteger)monthValue day:(NSInteger)dayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue {
//    return [_calendar dateWithEra:eraValue year:yearValue month:monthValue day:dayValue hour:hourValue minute:minuteValue second:secondValue nanosecond:nanosecondValue];
//}
//
//- (nullable NSDate *)dateWithEra:(NSInteger)eraValue yearForWeekOfYear:(NSInteger)yearValue weekOfYear:(NSInteger)weekValue weekday:(NSInteger)weekdayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue {
//    return [_calendar dateWithEra:eraValue yearForWeekOfYear:yearValue weekOfYear:weekValue weekday:weekdayValue hour:hourValue minute:minuteValue second:secondValue nanosecond:nanosecondValue];
//}
//
//- (NSDate *)startOfDayForDate:(NSDate *)date {
//    return [_calendar startOfDayForDate:date];
//}
//
//- (NSDateComponents *)componentsInTimeZone:(NSTimeZone *)timezone fromDate:(NSDate *)date {
//    return [_calendar componentsInTimeZone:timezone fromDate:date];
//}

- (NSComparisonResult)compareDate:(nonnull NSDate *)date1 toDate:(nonnull NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit {
    return [_calendar compareDate:date1 toDate:date2 toUnitGranularity:unit];
}

- (BOOL)isDate:(nonnull NSDate *)date1 equalToDate:(nonnull NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit {
    return [_calendar isDate:date1 equalToDate:date2 toUnitGranularity:unit];
}

- (BOOL)isDate:(nonnull NSDate *)date1 inSameDayAsDate:(nonnull NSDate *)date2{
    return [_calendar isDate:date1 inSameDayAsDate:date2];
}

//- (BOOL)isDateInToday:(NSDate *)date {
//    return [_calendar isDateInToday:date];
//}
//
//- (BOOL)isDateInYesterday:(NSDate *)date {
//    return [_calendar isDateInYesterday:date];
//}
//
//- (BOOL)isDateInTomorrow:(NSDate *)date {
//    return [_calendar isDateInTomorrow:date];
//}

- (BOOL)isDateInWeekend:(nonnull NSDate *)date {
    return [_calendar isDateInWeekend:date];
}

//- (BOOL)rangeOfWeekendStartDate:(out NSDate * _Nullable * _Nullable)datep interval:(out nullable NSTimeInterval *)tip containingDate:(NSDate *)date{
//    return [_calendar rangeOfWeekendStartDate:datep interval:tip containingDate:date];
//}
//
//- (BOOL)nextWeekendStartDate:(out NSDate * _Nullable * _Nullable)datep interval:(out nullable NSTimeInterval *)tip options:(NSCalendarOptions)options afterDate:(NSDate *)date{
//    return [_calendar nextWeekendStartDate:datep interval:tip options:options afterDate:date];
//}
//
//- (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDateComponents:(NSDateComponents *)startingDateComp toDateComponents:(NSDateComponents *)resultDateComp options:(NSCalendarOptions)options {
//    return [_calendar components:unitFlags fromDateComponents:startingDateComp toDateComponents:resultDateComp options:options];
//}

- (nullable NSDate *)dateByAddingUnit:(NSCalendarUnit)unit value:(NSInteger)value toDate:(nonnull NSDate *)date options:(NSCalendarOptions)options {
    return [_calendar dateByAddingUnit:unit value:value toDate:date options:options];
}

//- (void)enumerateDatesStartingAfterDate:(NSDate *)start matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)opts usingBlock:(void (NS_NOESCAPE ^)(NSDate * _Nullable date, BOOL exactMatch, BOOL *stop))block {
//    return [_calendar enumerateDatesStartingAfterDate:start matchingComponents:comps options:opts usingBlock:block];
//}
//
//- (nullable NSDate *)nextDateAfterDate:(NSDate *)date matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)options {
//    return [_calendar nextDateAfterDate:date matchingComponents:comps options:options];
//}
//
//
//- (nullable NSDate *)nextDateAfterDate:(NSDate *)date matchingUnit:(NSCalendarUnit)unit value:(NSInteger)value options:(NSCalendarOptions)options {
//    return [_calendar nextDateAfterDate:date matchingUnit:unit value:value options:options];
//}
//
//- (nullable NSDate *)nextDateAfterDate:(NSDate *)date matchingHour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue options:(NSCalendarOptions)options {
//    return [_calendar nextDateAfterDate:date matchingHour:hourValue minute:minuteValue second:secondValue options:options];
//}
//
//- (nullable NSDate *)dateBySettingUnit:(NSCalendarUnit)unit value:(NSInteger)v ofDate:(NSDate *)date options:(NSCalendarOptions)opts {
//    return [_calendar dateBySettingUnit:unit value:v ofDate:date options:opts];
//}

- (nullable NSDate *)dateBySettingHour:(NSInteger)h minute:(NSInteger)m second:(NSInteger)s ofDate:(nonnull NSDate *)date options:(NSCalendarOptions)opts{
    return [_calendar dateBySettingHour:h minute:m second:s ofDate:date options:opts];
}

//- (BOOL)date:(NSDate *)date matchesComponents:(NSDateComponents *)components{
//    return [_calendar date:date matchesComponents:components];
//}

@end
