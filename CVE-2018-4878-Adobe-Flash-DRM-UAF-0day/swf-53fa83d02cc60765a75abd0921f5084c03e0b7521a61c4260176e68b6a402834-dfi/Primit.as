package
{
   import flash.system.Capabilities;
   
   public class Primit
   {
      
      static var flash21:Mem_Arr;
      
      static var flash39:DRM_obj;
      
      static var flash27:uint;
      
      public static var flash70:Boolean;
      
      public static var flash72:Boolean;
      
      public static var var_19:Boolean;
      
      {
         flash70 = Capabilities.isDebugger;
         flash72 = Capabilities.version.toUpperCase().search("WIN") >= 0;
         var_19 = Capabilities.version.toUpperCase().search("MAC") >= 0;
      }
      
      public function Primit()
      {
         super();
      }
      
      static function flash32(param1:uint) : uint
      {
         if(param1 < 4096 || param1 >= 3221225472)
         {
            throw new Error("");
         }
         flash21.position = param1;
         return flash21.readUnsignedInt();
      }
      
      static function flash34(param1:uint, param2:uint) : *
      {
         if(param1 < 4096 || param1 >= 3221225472)
         {
            throw new Error("");
         }
         flash21.position = param1;
         flash21.writeUnsignedInt(param2);
      }
      
      static function flash35(param1:Object) : uint
      {
         flash21.a13 = param1;
         return flash39.a32 - 1;
      }
      
      static function flash36(param1:Object) : uint
      {
         var _loc2_:uint = flash35(param1) + 24;
         _loc2_ = flash32(_loc2_);
         if(!flash27)
         {
            while(flash27 < 50 && flash32(_loc2_ + flash27) != param1[0])
            {
               flash27 = flash27 + 4;
            }
            if(flash27 >= 50)
            {
               throw new Error("");
            }
         }
         return _loc2_ + flash27;
      }
      
      public static function flash20(:Mem_Arr, :DRM_obj) : *
      {
         var var_7:uint = 0;
         var Primit0:uint = 0;
         var var_11:Mem_Arr = param1;
         try
         {
            flash21 = var_11;
            var_7 = var_11.length;
            flash39 = param2;
            if(var_7 != 4294967295)
            {
               throw new Error("");
            }
            if(!flash72)
            {
               throw new Error("");
            }
            gadget.flash20();
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      public static function method_3(param1:uint) : String
      {
      }
   }
}
