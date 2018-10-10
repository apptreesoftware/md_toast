import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:md_toast/md_toast.dart';

@Component(
  selector: 'toast-example',
  directives: [
    coreDirectives,
    MaterialButtonComponent,
    MdToast,
  ],
  template: '''
  <material-button (trigger)="handleNormal()">Normal Toast</material-button>
  <material-button (trigger)="handleInfo()">Info Toast</material-button>
  <material-button (trigger)="handleError()">Error Toast</material-button>
  <material-button (trigger)="handleWarning()">Warning Toast</material-button>
  <material-button (trigger)="handleSuccess()">Success Toast</material-button>
  <md-toast #toastElement></md-toast>
  ''',
)
class ToastExample {
  @ViewChild('toastElement')
  MdToast toastElement;

  void handleNormal() {
    toastElement.showToast("Normal Toast");
  }
  void handleInfo() {
    toastElement.showToast("Info Toast", type: ToastType.info);
  }
  void handleError() {
    toastElement.showToast("Error Toast", type: ToastType.error);
  }
  void handleWarning() {
    toastElement.showToast("Warning Toast", type: ToastType.warning);
  }
  void handleSuccess() {
    toastElement.showToast("Success Toast", type: ToastType.success);
  }
}
