
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtSoThu2: UITextField!
    @IBOutlet weak var txtSoThuNhat: UITextField!
    @IBOutlet weak var lblThongBao: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        func diemBaMon(toan: Int, hoa: Int, ly: Int) -> (diemThapNhat : String, diemCaoNhat : String) {
            let diemBaMonHoc = ["Toan" : toan, "hoá" : hoa, "Lý" : ly ]
            let diemThapNhat = diemBaMonHoc.values.min()!
            let diemCaoNhat = diemBaMonHoc.values.max()!
               
               print("\(diemThapNhat)")
               print("\(diemCaoNhat)")
            var tenDiemiemThapNhat = ""
            var tenDiemCaoNhat = ""
            return(tenDiemiemThapNhat, tenDiemCaoNhat)
        }
        let ketQua = diemBaMon(toan: 10, hoa: 5, ly: 8)
        print(ketQua)
    }
    func tinhTong(soThuNhat: Float, soThuHai: Float) -> Float {
        return soThuNhat + soThuHai
    }
    
    

    @IBAction func btnTinhTong(_ sender: UIButton) {
        if let soThuNhatNhapVao = Float(txtSoThuNhat.text!) {
            if let soThuHaiNhapVao = Float(txtSoThu2.text!) {
                let ketQua = tinhTong(soThuNhat: soThuNhatNhapVao, soThuHai: soThuHaiNhapVao)
                lblThongBao.text = "Tổng là: \(ketQua)"
            } else {
                lblThongBao.text = "Số thứ hai không phải là một số thực"
            }
        } else {
            lblThongBao.text = "Số thứ nhất không phải là một số thực"
        }
    }
    
}


