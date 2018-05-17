typedef String Validator(String m);

first(List<Validator> validators) => (Object o) => validators
    .fold<String>(null, (String m, Validator v) => m ?? v(o));

required(String m) => (Object o) => o == null ? m : null;

equals(Object other, String m) => (Object o) => o != other ? m : null;

notEquals(Object other, String m) => (Object o) => o == other ? m : null;

minLength(String m, int l) => (String o) => o.length < l ? m : null;

maxLength(String m, int l) => (String o) => o.length > l ? m : null;

length(String m, int l) => (String o) => o.length > l ? m : null;

isIn<T>(String m, List<T> l) => (T o) => !l.contains(o) ? m : null;

isNotIn<T>(String m, List<T> l) => (T o) => l.contains(o) ? m : null;

//TODO: isEmpty(value);

//TODO: isBoolean(value);
//TODO: isDate(value);
//TODO: isString(value);
//TODO: isArray(value);
//TODO: isNumber(value, options);
//TODO: isInt(value);
//TODO: isEnum(value, entity);

//TODO: isDivisibleBy(value, num);
//TODO: isPositive(value);
//TODO: isNegative(value);
//TODO: max(num, max);
//TODO: min(num, min);

//TODO: minDate(date, minDate);
//TODO: maxDate(date, minDate);

//TODO: isBooleanString(str);
//TODO: isNumberString(str);

//TODO: contains(str, seed);
//TODO: notContains(str, seed);
//TODO: isAlpha(str);
//TODO: isAlphanumeric(str);
//TODO: isAscii(str);
//TODO: isBase64(str);
//TODO: isByteLength(str, min, max);
//TODO: isCreditCard(str);
//TODO: isCurrency(str, options);
//TODO: isEmail(str, options);
//TODO: isFQDN(str, options);
//TODO: isFullWidth(str);
//TODO: isHalfWidth(str);
//TODO: isVariableWidth(str);
//TODO: isHexColor(str);
//TODO: isHexadecimal(str);
//TODO: isIP(str, version);
//TODO: isISBN(str, version);
//TODO: isISIN(str);
//TODO: isISO8601(str);
//TODO: isJSON(str);
//TODO: isLowercase(str);
//TODO: isMobilePhone(str, locale);
//TODO: isMongoId(str);
//TODO: isMultibyte(str);
//TODO: isSurrogatePair(str);
//TODO: isURL(str, options);
//TODO: isUUID(str, version);
//TODO: isUppercase(str);
//TODO: length(str, min, max);
//TODO: matches(str, pattern, modifiers);
//TODO: isMilitaryTime(str);

//TODO: arrayContains(array, values);
//TODO: arrayNotContains(array, values);
//TODO: arrayNotEmpty(array);
//TODO: arrayMinSize(array, min);
//TODO: arrayMaxSize(array, max);
//TODO: arrayUnique(array);

//TODO: isInstance(value, target);