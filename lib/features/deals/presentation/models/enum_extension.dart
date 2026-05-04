import 'deal_status.dart';
import 'industry.dart';
import 'risk_level.dart';

extension EnumDisplay on Enum {
  String get label {
    switch (this) {
      case RiskLevel.low:
        return 'Low';
      case RiskLevel.medium:
        return 'Medium';
      case RiskLevel.high:
        return 'High';

      case DealStatus.open:
        return 'Open';
      case DealStatus.closed:
        return 'Closed';

      case Industry.fintech:
        return 'FinTech';
      case Industry.healthtech:
        return 'HealthTech';
      case Industry.realEstate:
        return 'Real Estate';
      case Industry.renewableEnergy:
        return 'Renewable Energy';
      case Industry.ai:
        return 'Artificial Intelligence';
      case Industry.agriculture:
        return 'Agriculture';
      case Industry.edtech:
        return 'EdTech';
      case Industry.supplyChain:
        return 'Supply Chain';

      default:
        return name;
    }
  }
}
