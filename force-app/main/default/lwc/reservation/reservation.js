import { LightningElement, track } from 'lwc';
import searchScooters from '@salesforce/apex/ScooterController.searchScooters';

export default class Reservation extends LightningElement {
  @track depotLocation = '';
  @track checkInTime = '';
  @track checkOutTime = '';
  @track scooters;

  handleDepotChange(event) {
    this.depotLocation = event.target.value;
  }

  handleCheckInChange(event) {
    this.checkInTime = event.target.value;
  }

  handleCheckOutChange(event) {
    this.checkOutTime = event.target.value;
  }

  searchScooters() {
    searchScooters({
      depotLocation: this.depotLocation,
      checkInTime: this.checkInTime,
      checkOutTime: this.checkOutTime,
    })
      .then((result) => {
        this.scooters = result;
      })
      .catch((error) => {
        // Handle error
      });
  }
}
