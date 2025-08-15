name = ["may", "kein", "kain", "radi"]
yearning = [5, 10, 1, 3]
photo = [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]

def solution(name, yearning, photo):
    answer = []

    dic = {}
    for name_, yearning_ in zip(name, yearning):
        dic[name_] = yearning_

    cnt = 0
    for pho in photo:
        for ph in pho:
            if (dic.get(ph)) is None:
                continue
            else :
                cnt += dic[ph]
        answer.append(cnt)
        cnt = 0

    return print(answer)

def main():
    # Example usage of the solution function
    result = solution(name, yearning, photo)
    print(result)

if __name__ == "__main__":
    main()
