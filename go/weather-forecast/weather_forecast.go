// Package weather provides the weather forecast.
package weather

var (
	// CurrentCondition is the current weather condition.
	CurrentCondition string
	// CurrentLocation is the current location for which the forecast is provided.
	CurrentLocation  string
)

// Forecast returns the current weather condition for a given city.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
