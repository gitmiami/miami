public class TextBuilder extends Builder {
    private StringBuffer buffer = new StringBuffer();           // ���̃t�B�[���h�ɕ������\�z���Ă���
    public void buildTitle(String title) {                       // �v���[���e�L�X�g�ł̃^�C�g��
        buffer.append("==============================\n");          // �����
        buffer.append("�w" + title + "�x\n");                       // �w�x���̃^�C�g��
        buffer.append("\n");                                        // ��s
    }
    public void buildString(String str) {                        // �v���[���e�L�X�g�ł̕�����
        buffer.append('��' + str + "\n");                           // �����̕�����
        buffer.append("\n");                                        // ��s
    }
    public void buildItems(String[] items) {                     // �v���[���e�L�X�g�ł̉ӏ�����
        for (int i = 0; i < items.length; i++) {
            buffer.append("�@�E" + items[i] + "\n");                // �E���̍���
        }
        buffer.append("\n");                                        // ��s
    }
    public Object buildResult() {                                 // ������������
        buffer.append("==============================\n");          // �����
        return buffer.toString();                                   // StringBuffer��String�ɕϊ�
    }
}
