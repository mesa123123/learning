object something{
    def main(args: Array[String]): Unit = {
        val r = 1 to 12
        println(this.exerciseFunction(r))
    }

    def exerciseFunction(inny: List[Int]): Int = {
        inny.slice(inny.length()-1,inny.length())
    }
}
