class Epidemicsound < Formula
    desc "Devtools for EpidemicSound"
    homepage "https://www.epidemicsound.com"
    url "insert-url-here"

    # Keep alphabetised
    depends_on "golang"

    def install
        bin.install "hello-epidemic.sh" => "hello-epidemic"
    end
  end
i