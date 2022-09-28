<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pagination | Tutorial</title>
    <link
      rel="shortcut icon"
      href="assets/images/favicon.svg"
      type="image/x-icon"
    />
    <link rel="stylesheet" href="assets/css/tailwind.css" />
  </head>
  <body>
    <!-- ====== Table Section Start -->
    <section class="bg-white py-20 lg:py-[120px]">
      <div class="container">
        <div class="-mx-4 flex flex-wrap">
          <div class="w-full px-4">
            <div class="max-w-full overflow-x-auto ">
              <table class="w-full table-auto mb-12">
                <thead>
                  <tr class="bg-primary text-center">
                    <th
                      class="w-1/6 min-w-[160px] border-l border-transparent py-4 px-3 text-lg font-semibold text-white lg:py-7 lg:px-4"
                    >
                    Medicine Name
                    </th>
                    <th
                      class="w-1/6 min-w-[160px] py-4 px-3 text-lg font-semibold text-white lg:py-7 lg:px-4"
                    >
                    Stock Available
                    </th>
                    <th
                      class="w-1/6 min-w-[160px] py-4 px-3 text-lg font-semibold text-white lg:py-7 lg:px-4"
                    >
                    Price
                    </th>
                    
                    <th
                      class="w-1/6 min-w-[160px] py-4 px-3 text-lg font-semibold text-white lg:py-7 lg:px-4"
                    >
                    Expiry Date
                    </th>
                    <th
                      class="w-1/6 min-w-[160px] border-r border-transparent py-4 px-3 text-lg font-semibold text-white lg:py-7 lg:px-4"
                    >
                      Action
                    </th>
                  </tr>
                </thead>
                <?php 
														
                    require "includes/conn.php";

						if(isset($_GET['page']))
						{
						$page = $_GET['page'];
					}
					else
				{
				$page = 1;
					}

			$num_per_page = 2;
			$start_from = ($page-1)*2;

														
            $sql ="SELECT * FROM store limit $start_from,$num_per_page";
            //create a query that fetch data from the database
             $res = mysqli_query($conn,$sql);
                        
            //check if there are any records in the database
             if ($res == TRUE) {
             $count = mysqli_num_rows($res);
             $sn=1;
            if($count > 0){
            while ($rows=mysqli_fetch_assoc($res)) {
            $id=$rows['id'];
            $medicine_name=$rows['medicine_name'];
            $Qty=$rows['Qty'];
            $price=$rows['price'];
            $expiry_date=$rows['expiry_date'];
           
        ?>
                <tbody>
                  <tr>
                    <td
                      class="border-b border-l border-[#E8E8E8]  py-5 px-2 text-center text-base font-medium text-dark"
                    >
                    <?php echo $medicine_name  ?>
                    </td>
                    <td
                      class="border-b border-[#E8E8E8]  py-5 px-2 text-center text-base font-medium text-dark"
                    >
                    <?php echo $Qty ?>
                    </td>
                    <td
                      class="border-b border-[#E8E8E8]  py-5 px-2 text-center text-base font-medium text-dark"
                    >
                    <?php echo $price  ?>
                    </td>
                    <td
                      class="border-b border-[#E8E8E8]  py-5 px-2 text-center text-base font-medium text-dark"
                    >
                    <?php echo $expiry_date  ?>
                    </td>
                    
                    <td
                      class="border-b border-r border-[#E8E8E8]  py-5 px-2 text-center text-base font-medium text-dark"
                    >
                      <a
                        href="javascript:void(0)"
                        class="inline-block rounded border border-primary py-2 px-6 text-primary hover:bg-primary hover:text-white"
                      >
                        Edit
                      </a>
                    </td>
                  </tr>
                  
                  
                </tbody>

                <?php
										}

									}
								}
							?>		
              </table>
            </div>

            <div class="col-md-6 md-3">
										<?php 
									$pr_query = "select * from store";
									$pr_result = mysqli_query($conn, $pr_query);
									$total_record = mysqli_num_rows($pr_result);
									
									$total_page = ceil($total_record/$num_per_page);
									
									if($page>1)
                {
                    echo "<a href='index.php?page=".($page-1)."' class='bg-primary p-4 rounded-md space-x-2 font-bold text-white'>Previous</a>";
                }

                
                for($i=1;$i<$total_page;$i++)
                {
                    echo "<a href='index.php?page=".$i."' class=' p-4 space-x-2'>$i</a>";
                }

                if($i>$page)
                {
                    echo "<a href='index.php?page=".($page+1)."' class='bg-primary p-4 rounded-md space-x-2 text-white font-bold'>Next</a>";
                }
								?>
								</div>
            

          </div>
        </div>
      </div>
    </section>
    <!-- ====== Table Section End -->
  </body>
</html>
