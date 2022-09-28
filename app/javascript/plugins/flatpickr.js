import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";





const initFlatpickr = () => {
  flatpickr("#range_start", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#range_end"})],
    inline: true,
    disable: [function(date) {return (date.getDay() === 1)}],
    locale: {
      firstDayOfWeek: 1
    }


  });

}

export { initFlatpickr };
