//���L�\�[�X�R�[�h�͕ύX�������ӂ݂̂̔����ł��B�B
//���̃N���X�͂��̂܂܃R���p�C���ł��܂���B
class CoinBank {
  �c�c�O���c�c
  static int number;
  �c�c�����c�c

  CoinBank(String owner, int balance) {
    this.owner = owner;
    if (balance >= 0) {
      this.balance = balance;
    }
    number++;
  }

�c�c�㗪�c�c
}
