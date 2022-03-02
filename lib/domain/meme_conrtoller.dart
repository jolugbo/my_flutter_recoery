import '../locator.dart';
import '../repository/meme_repo.dart';

class MemeDomainController{
  getNextMeme()async{
    return await locator.get<MemeRepo>().getMeme();
  }
}