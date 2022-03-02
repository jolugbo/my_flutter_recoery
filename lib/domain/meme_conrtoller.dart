import '../locator.dart';
import '../repository/meme_repo.dart';

class MemeDomainController{
  getNextMeme()async{
     locator.get<MemeRepo>().getMeme();
  }
}