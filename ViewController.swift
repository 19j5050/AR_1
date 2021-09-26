import UIKit
import SceneKit
import ARKit
import AVFoundation
extension SCNNode {
    func rotate(duration:Double){
        let rotate = SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: duration)
        self.runAction(SCNAction.repeatForever(rotate))
    }
}
class ViewController: UIViewController, ARSCNViewDelegate, AVAudioPlayerDelegate, UIGestureRecognizerDelegate {
    var audioPlayer:AVAudioPlayer!
    var audioPlayer1:AVAudioPlayer!
    var audioPlayer2:AVAudioPlayer!
    var audioPlayer3:AVAudioPlayer!
    @IBOutlet var button:UIButton!
    @IBOutlet var sceneView: ARSCNView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //画面がタップされたことを検知
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        tapRecognizer.delegate = self
        sceneView.addGestureRecognizer(tapRecognizer)
        //ラベルのテキストを変更
        
        label.text = "მოგესალმებით"
        label1.text = "楽器をタップ"
        // UILabelの文字列から、attributedStringを作成
        let attrText = NSMutableAttributedString(string: label.text!)
        // フォントカラーを設定
        // rangeで該当箇所を指定.
        /*attrText.addAttribute(.foregroundColor,
            value: UIColor.red, range: NSMakeRange(0, 12))*/
        label.textColor = UIColor.blue
        label1.textColor = UIColor.blue
        // attributedTextとしてUILabelに追加します.
        label.attributedText = attrText
        // システムフォントをサイズ36に設定
        label.font = UIFont.systemFont(ofSize: 36)
        label1.font = UIFont.systemFont(ofSize: 36)
        // デリゲートを設定
        sceneView.delegate = self
        // シーンを作成して登録
        sceneView.scene = SCNScene()
        // ライトの追加
        sceneView.autoenablesDefaultLighting = true;
        // 画像認識の参照用画像をアセットから取得
        let configuration = ARImageTrackingConfiguration()
        configuration.trackingImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil)!
        sceneView.session.run(configuration)
    }
    @objc func tap(_ tapRecognizer: UITapGestureRecognizer) {
        //タップした時にタップした座標を取得する
        let touchPoint = tapRecognizer.location(in: self.sceneView)
        let results = self.sceneView.hitTest(touchPoint, options: [SCNHitTestOption.searchMode : SCNHitTestSearchMode.all.rawValue])
        //タップされたノードを検知
        if let result = results.first {
           guard let hitNodeName = result.node.name else { return }
           guard hitNodeName == "obj_0_マテリアル" else { return }
            var  angle: Int = 0
            angle += 1
           if let doli = result.node.parent {
            //ラベルのテキストを変更
            label1.text = "ალელუია იავნანა"
            label1.font = UIFont.systemFont(ofSize: 36)
            
            let actMove = SCNAction.move(by: SCNVector3(0, 0, 0.1), duration: 0.2)
              doli.runAction(actMove)
                //音楽再生停止
                if ( audioPlayer.isPlaying ){
                    audioPlayer.stop()
                    label1.text="楽器をタップ"
                    //button.setTitle("Stop", for: UIControl.State())
                }
                else{
                    audioPlayer.play()
                    //doli.runAction(SCNAction .repeatForever(SCNAction .rotateBy(x: 0, y: 0.1, z: 0, duration: 1)))
                    //button.setTitle("Play", for: UIControl.State())
                }
           }
        }
    }
    @objc func tap2(_ tapRecognizer: UITapGestureRecognizer) {
        //タップした時にタップした座標を取得する
        let touchPoint = tapRecognizer.location(in: self.sceneView)
        let results = self.sceneView.hitTest(touchPoint, options: [SCNHitTestOption.searchMode : SCNHitTestSearchMode.all.rawValue])
        //タップされたノードを検知
        if let result = results.first {
           guard let hitNodeName = result.node.name else { return }
           guard hitNodeName == "obj_0_color_15277357" else { return }
            var  angle: Int = 0
            angle += 1
           if let doli = result.node.parent {
            //ラベルのテキストを変更
            label1.text = "ალელუია იავნანა"
            label1.font = UIFont.systemFont(ofSize: 36)
            let rotate = SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: 0.1)
            doli.runAction(SCNAction.repeatForever(rotate))
            let actMove = SCNAction.move(by: SCNVector3(0, 0, 0.1), duration: 0.2)
              doli.runAction(actMove)
                //音楽再生停止
                if ( audioPlayer1.isPlaying ){
                    audioPlayer1.stop()
                    label1.text="楽器をタップ"
                    //button.setTitle("Stop", for: UIControl.State())
                }
                else{
                    audioPlayer1.play()
                    //doli.runAction(SCNAction .repeatForever(SCNAction .rotateBy(x: 0, y: 0.1, z: 0, duration: 1)))
                    //button.setTitle("Play", for: UIControl.State())
                }
           }
        }
    }
    @objc func tap3(_ tapRecognizer: UITapGestureRecognizer) {
        //タップした時にタップした座標を取得する
        let touchPoint = tapRecognizer.location(in: self.sceneView)
        let results = self.sceneView.hitTest(touchPoint, options: [SCNHitTestOption.searchMode : SCNHitTestSearchMode.all.rawValue])
        //タップされたノードを検知
        if let result = results.first {
           guard let hitNodeName = result.node.name else { return }
           guard hitNodeName == "obj_0_color_15277357.001" else { return }
            var  angle: Int = 0
            angle += 1
           if let doli = result.node.parent {
            //ラベルのテキストを変更
            label1.text = "ალელუია იავნანა"
            label1.font = UIFont.systemFont(ofSize: 36)
            
            let actMove = SCNAction.move(by: SCNVector3(0, 0, 0.1), duration: 0.2)
              doli.runAction(actMove)
                //音楽再生停止
                if ( audioPlayer2.isPlaying ){
                    audioPlayer2.stop()
                    label1.text="楽器をタップ"
                    //button.setTitle("Stop", for: UIControl.State())
                }
                else{
                    audioPlayer2.play()
                    //doli.runAction(SCNAction .repeatForever(SCNAction .rotateBy(x: 0, y: 0.1, z: 0, duration: 1)))
                    //button.setTitle("Play", for: UIControl.State())
                }
           }
        }
    }
//    @objc func tap4(_ tapRecognizer: UITapGestureRecognizer) {
//        //タップした時にタップした座標を取得する
//        let touchPoint = tapRecognizer.location(in: self.sceneView)
//        let results = self.sceneView.hitTest(touchPoint, options: [SCNHitTestOption.searchMode : SCNHitTestSearchMode.all.rawValue])
//        //タップされたノードを検知
//        if let result = results.first {
//           guard let hitNodeName = result.node.name else { return }
//           guard hitNodeName == "obj_0_color_16089887" else { return }
//            var  angle: Int = 0
//            angle += 1
//           if let doli = result.node.parent {
//            //ラベルのテキストを変更
//            label1.text = "ალელუია იავნანა"
//            label1.font = UIFont.systemFont(ofSize: 36)
//
//            let actMove = SCNAction.move(by: SCNVector3(0, 0, 0.1), duration: 0.2)
//              doli.runAction(actMove)
//                //音楽再生停止
//                if ( audioPlayer3.isPlaying ){
//                    audioPlayer3.stop()
//                    label1.text="楽器をタップ"
//                    //button.setTitle("Stop", for: UIControl.State())
//                }
//                else{
//                    audioPlayer3.play()
//                    //doli.runAction(SCNAction .repeatForever(SCNAction .rotateBy(x: 0, y: 0.1, z: 0, duration: 1)))
//                    //button.setTitle("Play", for: UIControl.State())
//                }
//           }
//        }
//    }
    // マーカーが検出されたとき呼ばれる
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        /*// ノードの作成
        let boxNode = SCNNode()
        // ジオメトリと位置の設定
        boxNode.geometry = SCNBox(width:0.05, height:0.05, length:0.05, chamferRadius: 0)
        boxNode.position.y += 0.025
        // 画像マーカーの子要素にする
        node.addChildNode(boxNode)*/
        
        if(anchor.name == "MusicTicket_Salamuri") {
            // scnファイルからシーンを読み込む
            let scene = SCNScene(named: "art.scnassets/saramuri.scn")
            // シーンからノードを検索
            let modelNode = (scene?.rootNode.childNode(withName: "obj_0_マテリアル", recursively: false))!
            //let rotate = SCNAction.rotateBy(x: 0, y: 1.28, z: 0, duration: 1)
            //modelNode.runAction(SCNAction.repeatForever(rotate))
            // 検出面の子要素にする
            modelNode.position = SCNVector3(0, 0, 0)
            node.addChildNode(modelNode)
            
            // 再生する audio ファイルのパスを取得
            let audioPath = Bundle.main.path(forResource: "y2mate.com - ალელუია იავნანა  Hallelujah Lullaby  ნატო კახიძე ეკა მამალაძე ვახტანგ კახიძე", ofType:"mp3")!
            let audioUrl = URL(fileURLWithPath: audioPath)
            // auido を再生するプレイヤーを作成する
            var audioError:NSError?
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
            } catch let error as NSError {
                audioError = error
                audioPlayer = nil
            }
            // エラーが起きたとき
            if let error = audioError {
                print("Error \(error.localizedDescription)")
            }
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
        }
        
        if(anchor.name == "MusicTicket_Panduri") {
            // scnファイルからシーンを読み込む
            let scene = SCNScene(named: "art.scnassets/pandoluri.scn")
            // シーンからノードを検索
            let modelNode = (scene?.rootNode.childNode(withName: "obj_0_color_15277357", recursively: false))!
            //let rotate = SCNAction.rotateBy(x: 0, y: 1.28, z: 0, duration: 1)
            //modelNode.runAction(SCNAction.repeatForever(rotate))
            // 検出面の子要素にする
            modelNode.position = SCNVector3(0, 0, 0)
            node.addChildNode(modelNode)
            
            // 再生する audio ファイルのパスを取得
            let audioPath = Bundle.main.path(forResource: "y2mate.com - გია ყანჩელი  საით მიდიხარ", ofType:"mp3")!
            let audioUrl = URL(fileURLWithPath: audioPath)
            // auido を再生するプレイヤーを作成する
            var audioError:NSError?
            do {
                audioPlayer1 = try AVAudioPlayer(contentsOf: audioUrl)
            } catch let error as NSError {
                audioError = error
                audioPlayer1 = nil
            }
            // エラーが起きたとき
            if let error = audioError {
                print("Error \(error.localizedDescription)")
            }
            audioPlayer1.delegate = self
            audioPlayer1.prepareToPlay()
        }
        
        if(anchor.name == "MusicTicket_Doli") {
            // scnファイルからシーンを読み込む
            let scene = SCNScene(named: "art.scnassets/doli.scn")
            // シーンからノードを検索
            let modelNode = (scene?.rootNode.childNode(withName: "obj_0_color_15277357.001", recursively: false))!
            //let rotate = SCNAction.rotateBy(x: 0, y: 1.28, z: 0, duration: 1)
            //modelNode.runAction(SCNAction.repeatForever(rotate))
            // 検出面の子要素にする
            modelNode.position = SCNVector3(0, 0, 0)
            node.addChildNode(modelNode)
            
            // 再生する audio ファイルのパスを取得
            let audioPath = Bundle.main.path(forResource: "y2mate.com - აკუსტიკა Janngo ნინი ნუცუბიძე ლიზი რამიშვილი  გიორგი გიგაშვილი  თეთრი კლავიშები", ofType:"mp3")!
            let audioUrl = URL(fileURLWithPath: audioPath)
            // auido を再生するプレイヤーを作成する
            var audioError:NSError?
            do {
                audioPlayer2 = try AVAudioPlayer(contentsOf: audioUrl)
            } catch let error as NSError {
                audioError = error
                audioPlayer2 = nil
            }
            // エラーが起きたとき
            if let error = audioError {
                print("Error \(error.localizedDescription)")
            }
            audioPlayer2.delegate = self
            audioPlayer2.prepareToPlay()
        }
        
//        if(anchor.name == "MusicTicket_chonguri") {
//            // scnファイルからシーンを読み込む
//            let scene = SCNScene(named: "art.scnassets/chonguri.scn")
//            // シーンからノードを検索
//            let modelNode = (scene?.rootNode.childNode(withName: "obj_0_color_16089887", recursively: false))!
//            //let rotate = SCNAction.rotateBy(x: 0, y: 1.28, z: 0, duration: 1)
//            //modelNode.runAction(SCNAction.repeatForever(rotate))
//            // 検出面の子要素にする
//            modelNode.position = SCNVector3(0, 0, 0)
//            node.addChildNode(modelNode)
//
//            // 再生する audio ファイルのパスを取得
//            let audioPath = Bundle.main.path(forResource: "y2mate.com -  ირაკლი ახალაია Irakli Akhalaia  Fanduri ფანდური", ofType:"mp3")!
//            let audioUrl = URL(fileURLWithPath: audioPath)
//            // auido を再生するプレイヤーを作成する
//            var audioError:NSError?
//            do {
//                audioPlayer3 = try AVAudioPlayer(contentsOf: audioUrl)
//            } catch let error as NSError {
//                audioError = error
//                audioPlayer3 = nil
//            }
//            // エラーが起きたとき
//            if let error = audioError {
//                print("Error \(error.localizedDescription)")
//            }
//            audioPlayer3.delegate = self
//            audioPlayer3.prepareToPlay()
//        }
//    }
    // ボタンがタップされた時の処理
    /*@IBAction func buttonTapped(_ sender : Any) {
        if ( audioPlayer.isPlaying ){
            audioPlayer.stop()
            button.setTitle("Stop", for: UIControl.State())
        }
        else{
            audioPlayer.play()
            button.setTitle("Play", for: UIControl.State())
        }
    }*/
    }
    
}
