import '../../locator.dart';
import '../../repository/data_connectors/meme_repo.dart';

class MemeDomainController{
  getNextMeme()async{
    return await locator.get<MemeRepo>().getMeme();
  }
}